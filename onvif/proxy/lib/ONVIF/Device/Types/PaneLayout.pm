package ONVIF::Device::Types::PaneLayout;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Pane_of :ATTR(:get<Pane>);
my %Area_of :ATTR(:get<Area>);

__PACKAGE__->_factory(
    [ qw(        Pane
        Area

    ) ],
    {
        'Pane' => \%Pane_of,
        'Area' => \%Area_of,
    },
    {
        'Pane' => 'ONVIF::Device::Types::ReferenceToken',
        'Area' => 'ONVIF::Device::Types::Rectangle',
    },
    {

        'Pane' => 'Pane',
        'Area' => 'Area',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::PaneLayout

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PaneLayout from the namespace http://www.onvif.org/ver10/schema.

A pane layout describes one Video window of a display. It links a pane configuration to a region of the screen.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Pane


=item * Area




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::PaneLayout
   Pane => $some_value, # ReferenceToken
   Area => ,
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

