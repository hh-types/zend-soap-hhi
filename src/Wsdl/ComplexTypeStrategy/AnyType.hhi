<?hh // decl

namespace Zend\Soap\Wsdl\ComplexTypeStrategy;

class AnyType implements
    \Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface
{
    // Methods.
    public function setContext(\Zend\Soap\Wsdl $context): void;
    public function addComplexType(string $type): string;
}
