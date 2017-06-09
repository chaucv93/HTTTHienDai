﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DomainModel
{
    using System;
    using System.Collections.Generic;

    public partial class transaction
    {
        public int id { get; set; }
        public string transaction_id { get; set; }
        public Nullable<System.DateTime> transaction_date { get; set; }
        public string record_type { get; set; }
        public string acctid { get; set; }
        public Nullable<decimal> amount { get; set; }
        public Nullable<int> card_type { get; set; }
        public string card_number { get; set; }
        public string csv { get; set; }
        public string card_exp_month { get; set; }
        public string card_exp_year { get; set; }
        public string merchant_code { get; set; }
        public Nullable<int> product_id { get; set; }
        public Nullable<int> product_quantity { get; set; }
        public Nullable<decimal> product_price { get; set; }
        public string file_source { get; set; }
        public string batch_number { get; set; }
        public Nullable<int> status { get; set; }
    }
}
