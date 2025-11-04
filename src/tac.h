
#include <unordered_map>
#include <unordered_set>
#include <string>
#include <vector>
using namespace std;

class Type;

static unsigned int temp_var_id = 1;
static unsigned int label_id = 1;

enum TACOperandType {
    TAC_OPERAND_TEMP_VAR,
    TAC_OPERAND_IDENTIFIER,
    TAC_OPERAND_CONSTANT,
    TAC_OPERAND_LABEL,
    TAC_OPERAND_POINTER,
    TAC_OPERAND_TYPE,
    TAC_OPERAND_EMPTY,
    TAC_OPERAND_STRING,
};
class TACOperand {
public:
    TACOperandType type;
    string value;

    TACOperand() : type(TACOperandType::TAC_OPERAND_EMPTY), value("") {}

    TACOperand(TACOperandType type, string value);
};

extern unordered_map<string, TACOperand* > identifiers;

TACOperand* new_temp_var();

TACOperand* new_empty_var();

TACOperand* new_label();

TACOperand* new_label(int offset);

TACOperand* new_constant(string value);

TACOperand* new_identifier(string value);

TACOperand* new_type(string value);

TACOperand* new_string(string value);

enum TACOperatorType {
    TAC_OPERATOR_ADD = 0, // ok 
    TAC_OPERATOR_SUB, // ok
    TAC_OPERATOR_MUL, // ok
    TAC_OPERATOR_DIV, //ok
    TAC_OPERATOR_MOD, //ok
    TAC_OPERATOR_UMINUS,

    TAC_OPERATOR_EQ,
    TAC_OPERATOR_NE,
    TAC_OPERATOR_GT,
    TAC_OPERATOR_LT,
    TAC_OPERATOR_GE,
    TAC_OPERATOR_LE,

    TAC_OPERATOR_AND,
    TAC_OPERATOR_OR,
    TAC_OPERATOR_NOT,

    TAC_OPERATOR_BIT_AND,
    TAC_OPERATOR_BIT_OR,
    TAC_OPERATOR_BIT_XOR,
    TAC_OPERATOR_LEFT_SHIFT,
    TAC_OPERATOR_RIGHT_SHIFT,
    TAC_OPERATOR_BIT_NOT,

    TAC_OPERATOR_ASSIGN,

    TAC_OPERATOR_ADDR_OF,
    TAC_OPERATOR_DEREF,

    TAC_OPERATOR_CAST,

    TAC_OPERATOR_CALL,
    TAC_OPERATOR_RETURN,
    TAC_OPERATOR_PARAM,
    TAC_OPERATOR_FUNC_BEGIN,
    TAC_OPERATOR_FUNC_END,

    TAC_OPERATOR_NOP
};

class TACOperator {
public:
    TACOperatorType type;
    TACOperator();
    TACOperator(TACOperatorType type);
};

class TACInstruction {
public:
    TACOperand* label;
    int flag;
    TACOperator op;
    TACOperand* arg1;
    TACOperand* arg2;
    TACOperand* result;

    TACInstruction() : label(nullptr), flag(0), op(TACOperator()), arg1(nullptr), arg2(nullptr), result(nullptr) {}
    TACInstruction(TACOperator op, TACOperand* result, TACOperand* arg1, TACOperand* arg2, int flag);
};

bool is_assignment(TACInstruction* instruction);

TACInstruction* emit(TACOperator op, TACOperand* result, TACOperand* arg1, TACOperand* arg2, int flag);

void backpatch(unordered_set<TACInstruction*> list, TACOperand* label);

string get_TAC_instruction_string(TACInstruction* instruction); 

string get_operand_string(TACOperand* operand);
