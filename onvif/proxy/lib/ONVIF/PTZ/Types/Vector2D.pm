package ONVIF::PTZ::Types::Vector2D;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS = 'ONVIF::PTZ::Types::Vector2D::_Vector2D::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}



# There's no variety - empty complexType
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

__PACKAGE__->_factory();


package ONVIF::PTZ::Types::Vector2D::_Vector2D::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %x_of :ATTR(:get<x>);
my %y_of :ATTR(:get<y>);
my %space_of :ATTR(:get<space>);

__PACKAGE__->_factory(
    [ qw(
        x
        y
        space
    ) ],
    {

        x => \%x_of,

        y => \%y_of,

        space => \%space_of,
    },
    {
        x => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        y => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        space => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
    }
);

} # end BLOCK




1;


=pod

=head1 NAME

ONVIF::PTZ::Types::Vector2D

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Vector2D from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over



=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

,



=head2 attr

NOTE: Attribute documentation is experimental, and may be inaccurate.
See the correspondent WSDL/XML Schema if in question.

This class has additional attributes, accessibly via the C<attr()> method.

attr() returns an object of the class ONVIF::PTZ::Types::Vector2D::_Vector2D::XmlAttr.

The following attributes can be accessed on this object via the corresponding
get_/set_ methods:

=over

=item * x



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * y



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * space

 http://www.onvif.org/ver10/tptz/PanTiltSpaces/GenericSpeedSpace 



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::anyURI|SOAP::WSDL::XSD::Typelib::Builtin::anyURI>.


=back




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

