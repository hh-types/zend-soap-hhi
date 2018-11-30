<?hh // decl

namespace Zend\Soap;

class Wsdl {
    // Constants.
    const string XML_NS = 'xmlns';
    const string XML_NS_URI = 'http://www.w3.org/2000/xmlns/';
    const string WSDL_NS = 'wsdl';
    const string WSDL_NS_URI = 'http://schemas.xmlsoap.org/wsdl/';
    const string SOAP_11_NS = 'soap';
    const string SOAP_11_NS_URI = 'http://schemas.xmlsoap.org/wsdl/soap/';
    const string SOAP_12_NS = 'soap12';
    const string SOAP_12_NS_URI = 'http://schemas.xmlsoap.org/wsdl/soap12/';
    const string SOAP_ENC_NS = 'soap-enc';
    const string SOAP_ENC_URI = 'http://schemas.xmlsoap.org/soap/encoding/';
    const string XSD_NS = 'xsd';
    const string XSD_NS_URI = 'http://www.w3.org/2001/XMLSchema';
    const string TYPES_NS = 'tns';

    // Attributes.
    protected array<string, classname<mixed>> $classMap = [];
    protected \DOMDocument $dom;
    protected array<string, string> $includedTypes = [];
    protected ?\DOMElement $schema = null;
    protected ?\Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface
        $strategy = null;
    protected string $uri;
    protected \DOMElement $wsdl;

    // Methods.
    public function __construct(
        string $name,
        string $uri,
        ?\Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface
            $strategy = null,
        array<string, classname<mixed>> $classMap = [],
    ): void;
    protected function getDOMDocument(
        string $name,
        ?string $uri = null,
    ): \DOMDocument;
    public function getTargetNamespace(): string;
    public function getClassMap(): array<string, classname<mixed>>;
    public function setClassMap(
        array<string, classname<mixed>> $classMap,
    ): this;
    public function setUri(string $uri): this;
    public function getUri(): string;
    public function sanitizeUri(string $uri): string;
    public function setComplexTypeStrategy(
        \Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface
            $strategy,
    ): this;
    public function getComplexTypeStrategy(

    ): \Zend\Soap\Wsdl\ComplexTypeStrategy\ComplexTypeStrategyInterface;
    public function addMessage(
        string $messageName,
        array<string, mixed> $parts,
    ): \DOMElement;
    public function addPortType(string $name): \DOMElement;
    public function addPortOperation(
        \DOMElement $portType,
        string $name,
        ?string $input = null,
        ?string $output = null,
        bool $fault = false,
    ): \DOMElement;
    public function addBinding(string $name, string $portType): \DOMElement;
    public function addBindingOperation(
        \DOMElement $binding,
        string $name,
        mixed $input = false,
        mixed $output = false,
        bool $fault = false,
        int $soapVersion = \SOAP_1_1,
    ): \DOMElement;
    public function addSoapBinding(
        \DOMElement $binding,
        string $style = 'document',
        string $transport = 'http://schemas.xmlsoap.org/soap/http',
        int $soapVersion = \SOAP_1_1,
    ): \DOMElement;
    public function addSoapOperation(
        \DOMElement $operation,
        string $soapAction,
        int $soapVersion = \SOAP_1_1,
    ): \DOMElement;
    public function addService(
        string $name,
        string $portName,
        string $binding,
        string $location,
        int $soapVersion = \SOAP_1_1,
    ): \DOMElement;
    public function addDocumentation(
        \DOMElement $inputNode,
        string $documentation,
    ): \DOMElement;
    public function addTypes(\DOMNode $types): void;
    public function addType(string $type, string $wsdlType): this;
    public function getTypes(): array<string, string>;
    public function getSchema(): \DOMElement;
    public function toXML(): string;
    public function toDomDocument(): \DOMDocument;
    public function dump(?string $filename = null): bool;
    public function getType(string $type): string;
    public function addSchemaTypeSection(): this;
    public function translateType(string $type): string;
    public function addComplexType(string $type): string;
    protected function parseElement(array<string, mixed> $element): \DOMElement;
    protected function sanitizeAttributeValueByName(
        string $name,
        string $value,
    ): string;
    protected function arrayToAttributes(
        \DOMNode $node,
        array<string, mixed> $attributes,
        bool $withSanitizer = true,
    ): void;
    protected function setAttributeWithSanitization(
        \DOMNode $node,
        string $attributeName,
        mixed $attributeValue,
    ): void;
    protected function setAttribute(
        \DOMNode $node,
        string $attributeName,
        mixed $attributeValue,
    ): void;
    protected function getSoapNamespaceUriByVersion(int $soapVersion): string;
    public function addElement(array<string, mixed> $element): string;
}
