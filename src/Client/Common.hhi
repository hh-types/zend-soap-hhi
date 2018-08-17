<?hh // decl

namespace Zend\Soap\Client;

newtype DoRequestCallback = (function (
    \Zend\Soap\Client\Common,
    string,
    string,
    string,
    int,
    int
): mixed);

class Common extends \SoapClient
{
    // Attributes.
    protected DoRequestCallback $doRequestCallback;

    // Methods.
    public function __construct(
        DoRequestCallback $doRequestCallback,
        ?string $wsdl = null,
        ?array<string, mixed> $options = null
    ): void;
    public function __doRequest(
        string $request,
        string $location,
        string $action,
        int $version,
        ?int $oneWay = null
    ): mixed;
}
