//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebASPP
{
    using System;
    using System.Collections.Generic;
    
    public partial class PESERTA_JAWABAN_DETAIL
    {
        public int ID_JWBNPESERTA { get; set; }
        public Nullable<int> ID_PESERTA_TEST { get; set; }
        public Nullable<int> ID_SOAL { get; set; }
        public string JWBN_PESERTA { get; set; }
        public string Modified_by { get; set; }
    
        public virtual SOAL SOAL { get; set; }
        public virtual PESERTA_TES PESERTA_TES { get; set; }
    }
}
