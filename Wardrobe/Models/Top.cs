//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    
    public partial class Top
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Top()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int TopID { get; set; }
        [DisplayName("Brand")]
        public string TopName { get; set; }
        [DisplayName("Image")]
        public string TopPhoto { get; set; }
        [DisplayName("Item")]
        public string TopType { get; set; }
        [DisplayName("Color")]
        public string TopColor { get; set; }
        [DisplayName("Season")]
        public string TopSeason { get; set; }
        [DisplayName("Occasion")]
        public string TopOccasion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
    }
}
