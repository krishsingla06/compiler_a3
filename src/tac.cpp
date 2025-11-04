#include "tac.h"
#include <stdio.h>
#include <iostream>
#include <map>
#include <string>
#include <algorithm>
using namespace std;

void yyerror(const char *msg);
unordered_map<string, TACOperand*> identifiers;


TACOperand::TACOperand(TACOperandType type, string value) : type(type), value(value) {}
TACOperand* new_temp_var() {
    string temp_var = "#t" + to_string(temp_var_id++);
    TACOperand* t = new TACOperand(TAC_OPERAND_TEMP_VAR, temp_var);
    return t;
}

TACOperand* new_empty_var() {
    TACOperand* t = new TACOperand(TAC_OPERAND_EMPTY, "");
    return t;
}

TACOperand* new_label() {
    string label = to_string(label_id++);
    TACOperand* t = new TACOperand(TAC_OPERAND_LABEL, label);
    return t;
}

TACOperand* new_label(int offset) {
    string label = to_string(label_id+offset);
    TACOperand* t = new TACOperand(TAC_OPERAND_LABEL, label);
    return t;
}

TACOperand* new_constant(string value) {
    TACOperand* t = new TACOperand(TAC_OPERAND_CONSTANT, value);
    return t;
}

TACOperand* new_identifier(string value) {
    if (identifiers.find(value) == identifiers.end()) {
        TACOperand* new_id = new TACOperand(TAC_OPERAND_IDENTIFIER, value);
        identifiers[value] = new_id;
        return new_id;
    }
    else {
        TACOperand* existing_id = identifiers[value];
        return existing_id;
    }
}

TACOperand* new_type(string value) {
    TACOperand* t = new TACOperand(TAC_OPERAND_TYPE, value);
    return t;
}


TACOperand* new_string(string value) {
    TACOperand* t = new TACOperand(TAC_OPERAND_STRING, value);
    return t;
}


TACOperator::TACOperator() : type(TACOperatorType::TAC_OPERATOR_NOP) {}

TACOperator::TACOperator(TACOperatorType type) : type(type) {}

TACInstruction::TACInstruction(TACOperator op, TACOperand* result, TACOperand* arg1, TACOperand* arg2, int flag) {
    this->label = new_label(); 
    this->flag = flag;
    this->op = op;
    this->result = result;
    this->arg1 = arg1;
    this->arg2 = arg2;
}

bool is_assignment(TACInstruction* instruction) {
    if (instruction->op.type == (TACOperatorType::TAC_OPERATOR_CALL) || instruction->op.type == (TACOperatorType::TAC_OPERATOR_PARAM) || instruction->op.type == (TACOperatorType::TAC_OPERATOR_RETURN)) {
        return false;
    }
    else return true;
}

TACInstruction* emit(TACOperator op, TACOperand* result, TACOperand* arg1, TACOperand* arg2, int flag) {
    TACInstruction* instruction = new TACInstruction(op, result, arg1, arg2, flag);
    return instruction;
}

void backpatch(unordered_set<TACInstruction*> list, TACOperand* label) {
    for (auto instruction : list) {
        if (instruction->result->type == TAC_OPERAND_EMPTY) instruction->result = label;
    }
}

string get_operand_string(TACOperand* operand) {
    if(operand == nullptr) return "";
    if (operand->type == TAC_OPERAND_TEMP_VAR ||
        operand->type == TAC_OPERAND_IDENTIFIER ||
        operand->type == TAC_OPERAND_CONSTANT) {
        return operand->value;
    }
    else if(operand->type == TAC_OPERAND_LABEL){
        return "I" + operand->value;
    }
    else if (operand->type == TAC_OPERAND_POINTER) {
        return "*" + operand->value;
    }
    else if (operand->type == TAC_OPERAND_EMPTY) {
        return "";
    }
    else if (operand->type == TAC_OPERAND_TYPE) {
        return operand->value;
    }
    else if(operand->type == TAC_OPERAND_STRING) {
        return operand->value;
    }
    return "";
}

string get_operator_string(TACOperatorType op) {
    switch (op) {
    case TAC_OPERATOR_ADD: return "+";
    case TAC_OPERATOR_SUB: return "-";
    case TAC_OPERATOR_MUL: return "*";
    case TAC_OPERATOR_DIV: return "/";
    case TAC_OPERATOR_MOD: return "%";
    case TAC_OPERATOR_UMINUS: return "-";
    case TAC_OPERATOR_DEREF: return "*";
    case TAC_OPERATOR_EQ: return "==";
    case TAC_OPERATOR_NE: return "!=";
    case TAC_OPERATOR_GT: return ">";
    case TAC_OPERATOR_LT: return "<";
    case TAC_OPERATOR_GE: return ">=";
    case TAC_OPERATOR_LE: return "<=";
    case TAC_OPERATOR_AND: return "&&";
    case TAC_OPERATOR_OR: return "||";
    case TAC_OPERATOR_NOT: return "!";
    case TAC_OPERATOR_BIT_AND: return "&";
    case TAC_OPERATOR_BIT_OR: return "|";
    case TAC_OPERATOR_BIT_XOR: return "^";
    case TAC_OPERATOR_LEFT_SHIFT: return "<<";
    case TAC_OPERATOR_RIGHT_SHIFT: return ">>";
    case TAC_OPERATOR_BIT_NOT: return "~";
    case TAC_OPERATOR_ADDR_OF: return "&";
    default: return "";
    }
}


string get_TAC_instruction_string(TACInstruction* instruction) {
    string result;
    if(instruction->label->type == TAC_OPERAND_LABEL) result += instruction->label->value + ": ";
    if (instruction->flag == 1) {
        result += "goto " + get_operand_string(instruction->result);
    }
    else if (instruction->flag == 2) {
        result += "if " + get_operand_string(instruction->arg1) + " "
            + get_operator_string(instruction->op.type) + " "
            + get_operand_string(instruction->arg2) + " goto "
            + get_operand_string(instruction->result);
    }
    else if (instruction->flag == 4) {
        result += "goto_jump_table(" + get_operand_string(instruction->arg1)
            + "," + get_operand_string(instruction->arg2)+ ")";
    }
    else if(instruction->op.type == TAC_OPERATOR_CAST) {
        result += get_operand_string(instruction->result) + " = "
                + "(" + get_operand_string(instruction->arg1) + ")"
                + get_operand_string(instruction->arg2) ;
    }
    else if (instruction->op.type == TAC_OPERATOR_PARAM) {
        result += "param " + get_operand_string(instruction->result);
    }
    else if (instruction->op.type == TAC_OPERATOR_CALL) {
        if (instruction->result->value == "") {
            result += "call " + get_operand_string(instruction->arg1) + ", "
                + get_operand_string(instruction->arg2);
        }
        else {
            result += get_operand_string(instruction->result) + " = call "
                + get_operand_string(instruction->arg1) + ", "
                + get_operand_string(instruction->arg2);
        }
    }
    else if (instruction->op.type == TAC_OPERATOR_RETURN) {
        result += "return " + get_operand_string(instruction->result);
    }
    else if(instruction->op.type == TAC_OPERATOR_FUNC_BEGIN) {
        result += "function begin : " + get_operand_string(instruction->result);
    }
    else if (instruction->op.type == TAC_OPERATOR_FUNC_END) {
        result += "end function "+ get_operand_string(instruction->result);
    }

    else if (is_assignment(instruction)) {
        if (instruction->arg2->type != TAC_OPERAND_EMPTY) {
            result += get_operand_string(instruction->result) + " = "
                + get_operand_string(instruction->arg1) + " "
                + get_operator_string(instruction->op.type) + " "
                + get_operand_string(instruction->arg2);
        }
        else if (instruction->op.type != TAC_OPERATOR_NOP) {
            result += get_operand_string(instruction->result) + " = "
                + get_operator_string(instruction->op.type) + " "
                + get_operand_string(instruction->arg1);
        }
        else {
            result += get_operand_string(instruction->result) + " = "
                + get_operand_string(instruction->arg1);
        }
    }
    else result += "Nothing to print";
    return result;
}
