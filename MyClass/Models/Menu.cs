using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyClass.Models
{
    [Table("Menus")]
    public class Menu
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên!!!")]
        [Display(Name = "Tên")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập liên kết!!!")]
        [Display(Name = "Liên kết")]
        public string Link { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập kiểu!!!")]
        [Display(Name = "Kiểu")]
        public string TypeMenu { get; set; }
        [Display(Name = "Bảng")]
        public int? TableId { get; set; }
        [Display(Name = "Mã cấp cha")]
        public string Position { get; set; }
        public int? ParentId { get; set; }
        public int? CreateBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public DateTime? UpdateAt { get; set; }
        public int? UpdateBy { get; set; }
        public int? Orders { get; set; }
        [Display(Name = "Trạng thái")]
        public int Status { get; set; }
    }
}
