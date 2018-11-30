<?hh // decl

namespace Zend\Soap\Wsdl\ComplexTypeStrategy;

class ArrayOfTypeComplex
    extends \Zend\Soap\Wsdl\ComplexTypeStrategy\DefaultComplexType {
    // Methods.
    public function addComplexType(string $type): string;
    protected function addArrayOfComplexType(
        string $singularType,
        string $type,
    ): string;
    protected function getSingularPhpType(string $type): string;
    protected function getNestedCount(string $type): int;
}
