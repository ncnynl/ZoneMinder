package ONVIF::Media::Types::ExtensibleDocumented;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://docs.oasis-open.org/wsn/t-1' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %documentation_of :ATTR(:get<documentation>);

__PACKAGE__->_factory(
    [ qw(        documentation

    ) ],
    {
        'documentation' => \%documentation_of,
    },
    {
        'documentation' => 'ONVIF::Media::Types::Documentation',
    },
    {

        'documentation' => 'documentation',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

ONVIF::Media::Types::ExtensibleDocumented

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ExtensibleDocumented from the namespace http://docs.oasis-open.org/wsn/t-1.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * documentation




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::ExtensibleDocumented
   documentation =>  { # ONVIF::Media::Types::Documentation
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

