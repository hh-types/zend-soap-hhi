<?hh // decl

namespace Zend\Soap\Wsdl\ComplexTypeStrategy;

class Composite implements ComplexTypeStrategyInterface
{
    // Attributes.
    protected array<string, classname<ComplexTypeStrategyInterface>> $typeMap = [];
    protected mixed $defaultStrategy;
    protected ?\Zend\Soap\Wsdl $context;

    // Methods.
    public function __construct(
        array $typeMap = [],
        classname<ComplexTypeStrategyInterface> $defaultStrategy = DefaultComplexType::class
    ): void;
    public function connectTypeToStrategy(
        string $type,
        classname<ComplexTypeStrategyInterface> $strategy
    ): this;
    public function getDefaultStrategy(

    ): ComplexTypeStrategyInterface;
    public function getStrategyOfType(
        string $type
    ): ComplexTypeStrategyInterface;
    public function setContext(\Zend\Soap\Wsdl $context): void;
    public function addComplexType(string $type): string;
}
