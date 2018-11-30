<?hh // decl

namespace Zend\Soap;

class Client implements \Zend\Server\Client {
    // Attributes.
    protected ?array<string, classname<mixed>> $classmap = null;
    protected string $encoding = 'UTF-8';
    protected array $faultExceptions = [];
    protected string $lastMethod = '';
    protected array<\SoapHeader> $permanentSoapInputHeaders = [];
    protected ?\SoapClient $soapClient;
    protected array<\SoapHeader> $soapInputHeaders = [];
    protected array $soapOutputHeaders = [];
    protected int $soapVersion = \SOAP_1_2;
    protected ?array $typemap = null;
    protected ?string $wsdl = null;
    protected bool $keepAlive;
    protected int $sslMethod;
    protected ?int $connectionTimeout = null;
    protected ?string $localCert = null;
    protected ?string $location = null;
    protected ?string $login = null;
    protected ?string $passphrase = null;
    protected ?string $password = null;
    protected ?string $proxyHost = null;
    protected ?string $proxyLogin = null;
    protected ?string $proxyPassword = null;
    protected ?int $proxyPort = null;
    protected ?resource $streamContext = null;
    protected ?int $style = null;
    protected ?string $uri = null;
    protected ?int $use = null;
    protected ?string $userAgent = null;
    protected ?int $cacheWsdl = null;
    protected ?int $compression = null;
    protected ?int $features = null;

    // Methods.
    public function __construct(
        ?string $wsdl = null,
        ?array<string, mixed> $options = null,
    ): void;
    public function setWSDL(string $wsdl): this;
    public function getWSDL(): ?string;
    public function setOptions(array<string, mixed> $options): this;
    public function getOptions(): array<string, mixed>;
    public function setSoapVersion(int $version): this;
    public function getSoapVersion(): int;
    public function setClassmap(
        array<string, classname<mixed>> $classmap,
    ): this;
    public function getClassmap(): ?array<string, classname<mixed>>;
    public function setTypemap(array $typeMap): this;
    public function getTypemap(): ?array;
    public function setEncoding(string $encoding): this;
    public function getEncoding(): ?string;
    public function validateUrn(string $urn): bool;
    public function setUri(string $uri): this;
    public function getUri(): ?string;
    public function setLocation(string $location): this;
    public function getLocation(): ?string;
    public function setStyle(int $style): this;
    public function getStyle(): ?int;
    public function setEncodingMethod(int $use): this;
    public function getEncodingMethod(): ?int;
    public function setHttpLogin(string $login): this;
    public function getHttpLogin(): ?string;
    public function setHttpPassword(string $password): this;
    public function getHttpPassword(): ?string;
    public function setProxyHost(string $proxyHost): this;
    public function getProxyHost(): ?string;
    public function setProxyPort(int $proxyPort): this;
    public function getProxyPort(): ?int;
    public function setProxyLogin(string $proxyLogin): this;
    public function getProxyLogin(): ?string;
    public function setProxyPassword(string $proxyPassword): this;
    public function setHttpsCertificate(string $localCert): this;
    public function getHttpsCertificate(): ?string;
    public function setHttpsCertPassphrase(string $passphrase): this;
    public function getHttpsCertPassphrase(): ?string;
    public function setCompressionOptions(int $compressionOptions): this;
    public function getCompressionOptions(): ?int;
    public function getProxyPassword(): ?string;
    public function setStreamContext(resource $context): this;
    public function getStreamContext(): ?resource;
    public function setSoapFeatures(int $feature): this;
    public function getSoapFeatures(): ?int;
    public function setWSDLCache(int $caching): this;
    public function getWSDLCache(): ?int;
    public function setUserAgent(string $userAgent): this;
    public function getUserAgent(): ?string;
    public function getLastRequest(): string;
    public function getLastResponse(): string;
    public function getLastRequestHeaders(): string;
    public function getLastResponseHeaders(): string;
    public function getLastMethod(): string;
    public function _doRequest(
        \Zend\Soap\Client\Common $client,
        string $request,
        string $location,
        string $action,
        int $version,
        ?int $oneWay = null,
    ): mixed;
    protected function initSoapClientObject(): void;
    protected function _preProcessArguments(mixed ...$arguments): mixed;
    protected function _preProcessResult(mixed $result): mixed;
    public function addSoapInputHeader(
        \SoapHeader $header,
        bool $permanent = false,
    ): this;
    public function resetSoapInputHeaders(): this;
    public function getLastSoapOutputHeaderObjects(): array;
    public function __call(string $name, mixed ...$arguments);
    public function call(string $method, array $params = []);
    public function getFunctions(): array<string>;
    public function getTypes(): array<string, array<string, mixed>>;
    public function setSoapClient(\SoapClient $soapClient): this;
    public function getSoapClient(): \SoapClient;
    public function setCookie(
        string $cookieName,
        ?string $cookieValue = null,
    ): this;
    public function getKeepAlive(): ?bool;
    public function setKeepAlive(bool $keepAlive): this;
    public function getSslMethod(): ?int;
    public function setSslMethod(int $sslMethod): this;
}
