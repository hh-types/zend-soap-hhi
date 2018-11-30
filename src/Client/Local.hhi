<?hh // decl

namespace Zend\Soap\Client;

class Local extends \Zend\Soap\Client {
    // Attributes.
    protected \Zend\Soap\Server $server;

    // Methods.
    public function __construct(
        \Zend\Soap\Server $server,
        ?string $wsdl,
        ?array<string, mixed> $options = null,
    ): void;
    public function _doRequest(
        \Zend\Soap\Client\Common $client,
        string $request,
        string $location,
        string $action,
        int $version,
        ?int $oneWay = null,
    ): string;
}
