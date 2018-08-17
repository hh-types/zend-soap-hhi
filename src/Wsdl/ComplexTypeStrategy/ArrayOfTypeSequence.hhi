<?hh // decl

namespace Zend\Soap\Wsdl\ComplexTypeStrategy;

class ArrayOfTypeSequence extends
    \Zend\Soap\Wsdl\ComplexTypeStrategy\DefaultComplexType
{
    // Methods.
    public function addComplexType(string $type): string;
    protected function getTypeBasedOnNestingLevel(
        string $singularType,
        int $level
    ): string;
    protected function getSingularType(string $type): string;
    protected function getNestedCount(string $type): int;
    protected function addSequenceType(
        string $arrayType,
        string $childType,
        string $phpArrayType
    ): void;
}
