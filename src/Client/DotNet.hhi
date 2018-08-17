<?hh // decl

namespace Zend\Soap\Client;

class DotNet extends \Zend\Soap\Client
{
    // Attributes.
    /* HH_FIXME[2049] */
    protected ?\Zend\Http\Client\Adapter\Curl $curlClient = null;
    protected string $lastRequestHeaders = '';
    protected string $lastResponseHeaders = '';
    protected array<string, mixed> $options = [];
    protected bool $useNtlm = false;

    // Methods.
    public function __construct(
        ?string $wsdl = null,
        ?array<string, mixed> $options = null
    );
    public function _doRequest(
        \Zend\Soap\Client\Common $client,
        string $request,
        string $location,
        string $action,
        int $version,
        ?int $oneWay = null
    ): string;
    /* HH_FIXME[2049] */
    public function getCurlClient(): \Zend\Http\Client\Adapter\Curl;
    public function getLastRequestHeaders(): string;
    public function getLastResponseHeaders(): string;
    public function setCurlClient(
        /* HH_FIXME[2049] */
        \Zend\Http\Client\Adapter\Curl $curlClient
    ): this;
    public function setOptions(array<string, mixed> $options): this;
    protected function _preProcessArguments(mixed ...$arguments): mixed;
    protected function _preProcessResult(mixed $result): mixed;
    protected function flattenHeaders(array<string, mixed> $headers): string;
}
