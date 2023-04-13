using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyClass.Models
{
    [Table("Links")]
    public class Link
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Liên kết!!!")]
        [Display(Name = "Liên kết")]
        public String Slug { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Kiểu liên kết!!!")]
        [Display(Name = "Kiểu liên kết")]
        public String TypeLink { get; set; }
        public int TableId { get; set; }
    }
}
