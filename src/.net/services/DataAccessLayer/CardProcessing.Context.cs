﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccessLayer
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using DomainModel;
    
    public partial class card_processingEntities : DbContext
    {
        public card_processingEntities()
            : base("name=card_processingEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<device_status> device_status { get; set; }
        public DbSet<device> devices { get; set; }
        public DbSet<master> masters { get; set; }
        public DbSet<merchant> merchants { get; set; }
        public DbSet<parameter> parameters { get; set; }
        public DbSet<token> tokens { get; set; }
        public DbSet<transaction> transactions { get; set; }
        public DbSet<user> users { get; set; }
        public DbSet<merchant_type> merchant_type { get; set; }
        public DbSet<thongbao> thongbaos { get; set; }
    }
}
