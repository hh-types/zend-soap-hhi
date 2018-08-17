<?hh // strict

namespace Zend\Soap\Wsdl\ComplexTypeStrategy;

interface ComplexTypeStrategyInterface
{
    public function setContext(\Zend\Soap\Wsdl $context): void;
    public function addComplexType(string $type): string;
}
