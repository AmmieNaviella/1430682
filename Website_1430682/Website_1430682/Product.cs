//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Website_1430682
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public int ID { get; set; }
        public int TypeId { get; set; }
        public string Name { get; set; }
        public Nullable<int> Price { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
    
        public virtual ProductType ProductType { get; set; }
    }
}
