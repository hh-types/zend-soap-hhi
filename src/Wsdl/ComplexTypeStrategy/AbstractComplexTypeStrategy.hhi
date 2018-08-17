<?hh // decl

namespace Zend\Soap\Wsdl\ComplexTypeStrategy;

abstract class AbstractComplexTypeStrategy implements
    \Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface
{
    // Attributes.
    protected \Zend\Soap\Wsdl $context;

    // Methods;
    public function setContext(\Zend\Soap\Wsdl $context): void;
    public function getContext(): ?\Zend\Soap\Wsdl;
    public function scanRegisteredTypes(string $phpType): mixed;
}
