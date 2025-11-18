
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
    TAC_OPERATOR_UMINUS, //ok

    TAC_OPERATOR_EQ, // ok
    TAC_OPERATOR_NE, // ok
    TAC_OPERATOR_GT, // ok
    TAC_OPERATOR_LT, // ok
    TAC_OPERATOR_GE, // ok
    TAC_OPERATOR_LE, // ok

    TAC_OPERATOR_AND,  // ok
    TAC_OPERATOR_OR, // ok
    TAC_OPERATOR_NOT, // ok

    TAC_OPERATOR_BIT_AND, // ok      
    TAC_OPERATOR_BIT_OR,// ok
    TAC_OPERATOR_BIT_XOR,// ok
    TAC_OPERATOR_LEFT_SHIFT,// ok
    TAC_OPERATOR_RIGHT_SHIFT,// ok
    TAC_OPERATOR_BIT_NOT,// ok

    TAC_OPERATOR_ADDR_OF, // ok
    TAC_OPERATOR_DEREF, // ok

    TAC_OPERATOR_CAST,

    TAC_OPERATOR_CALL, // ok
    TAC_OPERATOR_RETURN, // ok
    TAC_OPERATOR_PARAM, // ok
    TAC_OPERATOR_FUNC_BEGIN, // ok
    TAC_OPERATOR_FUNC_END, // ok
    TAC_OPERATOR_STORE_INDIRECT,  // *ptr = value // ok

    TAC_OPERATOR_NOP,
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
