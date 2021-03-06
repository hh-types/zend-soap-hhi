<?hh // decl

namespace Zend\Soap\Server;

class DocumentLiteralWrapper<T> {
    // Attributes.
    protected T $object;
    protected \ReflectionObject $reflection;

    // Methods.
    public function __construct(T $object): void;
    public function __call(string $method, array<mixed> $args): mixed;
    protected function parseArguments(
        string $method,
        mixed $document,
    ): array<string, mixed>;
    protected function getResultMessage(
        string $method,
        mixed $ret,
    ): array<string, mixed>;
    protected function assertServiceDelegateHasMethod(string $method): void;
    protected function assertOnlyOneArgument(array $args): void;
}
