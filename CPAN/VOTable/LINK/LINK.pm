# LINK.pm

=pod

=head1 NAME

VOTable::LINK - VOTable LINK element class

=head1 SYNOPSIS

use VOTable::LINK

=head1 DESCRIPTION

This class implements an interface to VOTable LINK elements. This
class inherits from VOTable::Element, and therefore all of the methods
from that class are available to this class.

=head2 Methods

=head3 new($arg)

Create and return a new VOTable::LINK object. Throw an exception if an
error occurs. If $arg is supplied, and is a XML::LibXML::Element
object for a 'LINK' element, that object is used to create the
VOTable::LINK object (just by reblessing).

=head3 get()

Return all of the text from within this element as a single
string. Return an empty string if there is no text. Text which
contains character entities is NOT converted to entity
references. Throw an exception if an error occurs.

=head3 set($str)

Set the text content of the element to the specified string. Throw an
exception if an error occurs. Note that the existing text content of
the element is deleted first. Character entities should _not_ be
replaced with the corresponding entity references before this method
is called.

=head3 empty()

Empty the text content of the element. Throw an exception if an error
occurs.

=head3 get_ID()

Return the value of the 'ID' attribute for this LINK element. Throw an
exception if an error occurs. Return an empty string if the 'ID'
attribute has not been set. Throw an exception if an error occurs.

=head3 set_ID($id)

Set the value of the 'ID' attribute for this LINK element to the
specified value. Throw an exception if an error occurs.

=head3 remove_ID()

Remove the the 'ID' attribute for this LINK element. Throw an
exception if an error occurs.

=head3 get_content_role()

Return the value of the 'content-role' attribute for this LINK
element. Return an empty string if the 'content-role' attribute has
not been set. Throw an exception if an error occurs.

=head3 set_content_role($content_role)

Set the value of the 'content-role' attribute for this LINK element to
the specified value. Throw an exception if an error occurs. Currently
supported values are 'query', 'hints', and 'doc'.

=head3 remove_content_role()

Remove the the 'content-role' attribute for this LINK element. Throw
an exception if an error occurs.

=head3 get_content_type()

Return the value of the 'content-type' attribute for this LINK
element. Return an empty string if the 'content-type' attribute has
not been set. Throw an exception if an error occurs.

=head3 set_content_type($content_type)

Set the value of the 'content-type' attribute for this LINK element to
the specified value. Throw an exception if an error occurs.

=head3 remove_content_type()

Remove the the 'content-type' attribute for this LINK element. Throw
an exception if an error occurs.

=head3 get_title()

Return the value of the 'title' attribute for this LINK
element. Return an empty string if the 'title' attribute has not been
set. Throw an exception if an error occurs.

=head3 set_title($title)

Set the value of the 'title' attribute for this LINK element to the
specified value. Throw an exception if an error occurs.

=head3 remove_title()

Remove the the 'title' attribute for this LINK element. Throw an
exception if an error occurs.

=head3 get_value()

Return the value of the 'value' attribute for this LINK
element. Return an empty string if the 'value' attribute has not been
set. Throw an exception if an error occurs.

=head3 set_value($value)

Set the value of the 'value' attribute for this LINK element to the
specified value. Throw an exception if an error occurs.

=head3 remove_value()

Remove the the 'value' attribute for this LINK element. Throw an
exception if an error occurs.

=head3 get_href()

Return the value of the 'href' attribute for this LINK element. Return
an empty string if the 'href' attribute has not been set. Throw an
exception if an error occurs.

=head3 set_href($href)

Set the value of the 'href' attribute for this LINK element to the
specified value. Throw an exception if an error occurs.

=head3 remove_href()

Remove the the 'href' attribute for this LINK element. Throw an
exception if an error occurs.

=head3 get_gref()

Return the value of the 'gref' attribute for this LINK element. Return
an empty string if the 'gref' attribute has not been set. Throw an
exception if an error occurs.

=head3 set_gref($gref)

Set the value of the 'gref' attribute for this LINK element to the
specified value. Throw an exception if an error occurs.

=head3 remove_gref()

Remove the the 'gref' attribute for this LINK element. Throw an
exception if an error occurs.

=head3 get_action()

Return the value of the 'action' attribute for this LINK
element. Return an empty string if the 'action' attribute has not been
set. Throw an exception if an error occurs.

=head3 set_action($action)

Set the value of the 'action' attribute for this LINK element to the
specified value. Throw an exception if an error occurs.

=head3 remove_action()

Remove the the 'action' attribute for this LINK element. Throw an
exception if an error occurs.

=head3 toString($arg)

Return a string representation of the element and all of its
children. Character entities are replaced with entity references where
appropriate. If $arg is '1', the output has extra whitespace for
readability. If $arg is '2', text content is surrounded by
newlines. This method is directly inherited from XML::LibXML::Element,
so further documentation may be found in the XML::LibXML::Element
manual page.

=head1 WARNINGS

=over 4

=item

Valid attribute values are not currently enforced.

=back

=head1 SEE ALSO

=over 4

=item

VOTable::Element

=back

=head1 AUTHOR

Eric Winter, NASA GSFC (Eric.L.Winter.1@gsfc.nasa.gov)

=head1 VERSION

$Id: LINK.pm,v 1.1 2003/10/13 10:51:23 aa Exp $

=cut

#******************************************************************************

# Revision history

# $Log: LINK.pm,v $
# Revision 1.1  2003/10/13 10:51:23  aa
# GSFC VOTable module V0.10
#
# Revision 1.1.1.13  2003/05/14 00:03:16  elwinter
# Added overriding set_content_role() method to check for valid values.
#
# Revision 1.1.1.12  2003/04/09 16:25:00  elwinter
# Changed VERSION to 1.0.
#
# Revision 1.1.1.11  2003/04/07 17:27:33  elwinter
# Updated documentation.
#
# Revision 1.1.1.10  2003/03/12 12:41:44  elwinter
# Overhauled to use XML::LibXML.
#
# Revision 1.1.1.9  2002/11/17 16:05:32  elwinter
# Added code for get_valid_attribute_names.
#
# Revision 1.1.1.8  2002/11/14 17:12:02  elwinter
# Moved new to Element.
#
# Revision 1.1.1.7  2002/11/14 16:37:19  elwinter
# Moved toString and new_from_xmldom to Element.
#
# Revision 1.1.1.6  2002/11/13 19:04:01  elwinter
# Moved all accessor (get/set/remove methods to VOTable::Element AUTOLOAD.
#
# Revision 1.1.1.5  2002/11/13 17:03:36  elwinter
# Moved set() method to VOTable::Element.
#
# Revision 1.1.1.4  2002/11/13 16:30:34  elwinter
# Moved empty() method to VOTable::Element.
#
# Revision 1.1.1.3  2002/11/13 15:50:52  elwinter
# Moved get() method to VOTable::Element.
#
# Revision 1.1.1.2  2002/11/12 15:30:11  elwinter
# Added toString method.
#
# Revision 1.1.1.1  2002/10/25 18:30:48  elwinter
# Changed required Perl version to 5.6.0.
#
# Revision 1.1  2002/09/11  14:05:26  elwinter
# Initial revision
#

#******************************************************************************

# Begin the package definition.
package VOTable::LINK;

# Specify the minimum acceptable Perl version.
use 5.6.1;

# Turn on strict syntax checking.
use strict;

# Use enhanced diagnostic messages.
use diagnostics;

# Use enhanced warnings.
use warnings;

#******************************************************************************

# Set up the inheritance mechanism.
use VOTable::Element;
our @ISA = qw(VOTable::Element);

# Module version.
our $VERSION = 1.0;

#******************************************************************************

# Specify external modules to use.

# Standard modules

# Third-party modules

# Project modules

#******************************************************************************

# Class constants

#******************************************************************************

# Class variables

our(@valid_attribute_names) = qw(ID content-role content-type title value
				 href gref action);

#******************************************************************************

# Method definitions

#******************************************************************************

sub set_content_role()
{

    # Save arguments.
    my($self, $content_role) = @_;

    #--------------------------------------------------------------------------

    # Local variables

    # List of valid values for the 'content_role' attribute.
    my(@valids) = qw(query hints doc);

    #--------------------------------------------------------------------------

    # Make sure the specified value is allowed.
    die "Invalid content_role: $content_role!"
	if not grep(/^$content_role$/, @valids);

    # Set the attribute.
    $self->setAttribute('content-role', $content_role);

}

#******************************************************************************
1;
__END__