<?hh // decl

namespace Zend\Soap;

class Server implements \Zend\Server\Server
{
    // Attributes.
    protected ?string $actor;
    protected classname<dynamic> $class;
    protected ?\SoapServer $server = null;
    protected array<mixed> $classArgs = [];
    protected ?array<string, classname<dynamic>> $classmap;
    protected ?string $encoding;
    protected array<string> $faultExceptions = [];
    protected ?\Exception $caughtException = null;
    protected ?int $features;
    protected mixed $functions = [];
    protected mixed $object;
    protected bool $debug = false;
    protected ?int $persistence;
    protected ?string $request;
    protected ?string $response;
    protected bool $returnResponse = false;
    protected int $soapVersion = \SOAP_1_2;
    protected ?array<array<string, mixed>> $typemap;
    protected ?string $uri;
    protected ?string $wsdl;
    protected ?int $wsdlCache;
    protected ?bool $sendErrors;
    protected ?bool $parseHuge;

    // Methods.
    public function __construct(
        ?string $wsdl = null,
        ?array<string, mixed> $options = null
    );
    public function setOptions(array<string, mixed> $options): this;
    public function getOptions(): array<string, mixed>;
    public function setEncoding(string $encoding): this;
    public function getEncoding(): ?string;
    public function setSoapVersion(int $version): this;
    public function getSoapVersion(): int;
    public function validateUrn(string $urn): bool;
    public function setActor(string $actor): this;
    public function getActor(): ?string;
    public function setUri(string $uri): this;
    public function getUri(): ?string;
    public function setClassmap(array<string, classname<dynamic>> $classmap): this;
    public function getClassmap(): ?array<string, classname<dynamic>>;
    public function setTypemap(array<array<string, mixed>> $typeMap): this;
    public function getTypemap(): ?array<array<string, mixed>>;
    public function setWSDL(string $wsdl): this;
    public function getWSDL(): ?string;
    public function setSoapFeatures(int $feature): this;
    public function getSoapFeatures(): ?int;
    public function setWSDLCache(int $options): this;
    public function getWSDLCache(): ?int;
    public function setSendErrors(bool $sendErrors): this;
    public function getSendErrors(): ?bool;
    public function setParseHuge(bool $parseHuge): this;
    public function getParseHuge(): ?bool;
    public function addFunction(
        mixed $function,
        string $namespace = ''
    ): void;
    public function setClass(
        dynamic $class,
        string $namespace = '',
        mixed... $argv
    ): void;
    public function setObject(mixed $object): this;
    public function getFunctions(): Traversable;
    public function loadFunctions(array $definition): void;
    public function setPersistence(int $mode): void;
    protected function setRequest(mixed $request): this;
    public function getLastRequest(): ?string;
    public function setReturnResponse(bool $flag = true): this;
    public function getReturnResponse(): bool;
    public function getResponse(): string;
    public function getSoap(): \SoapServer;
    public function handle(mixed $request = null): mixed;
    protected function initializeSoapErrorContext(): bool;
    public function setDebugMode(bool $debug): this;
    public function registerFaultException(mixed $class): this;
    public function isRegisteredAsFaultException(string $fault): bool;
    public function deregisterFaultException(string $class): bool;
    public function getFaultExceptions(): array<string>;
    public function getException(): ?\Exception;
    public function fault(
        mixed $fault = null,
        arraykey $code = 'Receiver'
    ): \SoapFault;
    public function handlePhpErrors(int $errno, string $errstr): \SoapFault;
}
