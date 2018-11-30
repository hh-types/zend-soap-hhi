<?hh // decl

namespace Zend\Soap\AutoDiscover\DiscoveryStrategy;

interface DiscoveryStrategyInterface {
    public function getFunctionParameterType(
        \Zend\Server\Reflection\ReflectionParameter $param,
    ): string;
    public function getFunctionReturnType(
        \Zend\Server\Reflection\AbstractFunction $function,
        \Zend\Server\Reflection\Prototype $prototype,
    ): string;
    public function isFunctionOneWay(
        \Zend\Server\Reflection\AbstractFunction $function,
        \Zend\Server\Reflection\Prototype $prototype,
    ): bool;
    public function getFunctionDocumentation(
        \Zend\Server\Reflection\AbstractFunction $function,
    ): string;
}
