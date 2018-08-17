<?hh // decl partial

namespace Zend\Soap;

type OperationStyle = shape(
    'use' => string,
    ?'encodingStyle' => string,
    ?'namespace' => string
);

type BindingStyle = shape(
    ?'style' => string,
    ?'transport' => string
);

class AutoDiscover
{
    // Attributes.
    protected ?string $serviceName;
    protected ?\Zend\Server\Reflection $reflection;
    protected array $functions = [];
    protected classname<dynamic> $class;
    protected bool $strategy;
    protected string $uri;
    protected OperationStyle $operationBodyStyle;
    protected BindingStyle $bindingStyle;
    protected classname<\Zend\Soap\Wsdl> $wsdlClass = \Zend\Soap\Wsdl::class;
    protected array<string, classname<dynamic>> $classMap = [];
    protected ?\Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface $discoveryStrategy;

    // Methods.
    public function __construct(
        ?\Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface $strategy = null,
        ?string $endpointUri = null,
        ?classname<\Zend\Soap\Wsdl> $wsdlClass = null,
        array $classMap = []
    ): void;
    public function setDiscoveryStrategy(
        \Zend\Soap\AutoDiscover\DiscoveryStrategy\DiscoveryStrategyInterface $discoveryStrategy
    ): this;
    public function getDiscoveryStrategy(

    ): \Zend\Soap\AutoDiscover\DiscoveryStrategy\DiscoveryStrategyInterface;
    public function getClassMap(): array<classname<dynamic>, string>;
    public function setClassMap(
        array<classname<dynamic>, string> $classMap
    ): this;
    public function setServiceName(string $serviceName): this;
    public function getServiceName(): string;
    public function setUri(string $uri): this;
    public function getUri(): string;
    public function setWsdlClass(classname<\Zend\Soap\Wsdl> $wsdlClass): this;
    public function getWsdlClass(): classname<\Zend\Soap\Wsdl>;
    public function setOperationBodyStyle(OperationStyle $operationStyle): this;
    public function setBindingStyle(BindingStyle $bindingStyle = shape()): this;
    public function setComplexTypeStrategy(
        \Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface $strategy
    ): this;
    public function setClass(classname<dynamic> $class): this;
    public function addFunction(mixed $function): this;
    protected function generateClass(): \Zend\Soap\Wsdl;
    protected function generateFunctions(): \Zend\Soap\Wsdl;
    protected function generateWsdl(array<\Zend\Server\Reflection\ReflectionMethod> $reflectionMethods): \Zend\Soap\Wsdl;
    protected function addFunctionToWsdl(
        \Zend\Server\Reflection\AbstractFunction $function,
        \Zend\Soap\Wsdl $wsdl,
        \DOMElement $port,
        \DOMElement $binding
    ): void;
    public function generate(): \Zend\Soap\Wsdl;
    public function dump(string $filename): bool;
    public function toXml(): string;
    public function handle(): void;
}
