using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyClass.Models
{
    [Table("Configs")]
    public class Config
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên!!!")]
        [Display(Name = "Tên")]
        public String Name { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Giá trị!!!")]
        [Display(Name = "Giá trị")]
        public String Value { get; set; }
    }
}
