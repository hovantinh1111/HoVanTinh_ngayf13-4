using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyClass.Models
{
    [Table("Orders")]
    public class Order
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Mã người dùng!!!")]
        [Display(Name = "Mã người dùng")]
        public int UserId { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Tên người nhận hàng!!!")]
        [Display(Name = "Tên người nhận hàng")]
        public string Name { get; set; }
        [Display(Name = "Số điện thoại")]
        public string Address { get; set; }
        public string Phone { get; set; }
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Display(Name = "Ghi chú")]
        public string Note { get; set; }
        [Display(Name = "Tạo bởi")]
        public int? CreatedBy { get; set; }
        [Display(Name = "Tạo vào lúc")]
        public DateTime? CreatedAt { get; set; }
        [Display(Name = "Cập nhật bởi")]
        public int? UpdatedBy { get; set; }
        [Display(Name = "Cập nhật vào lúc")]
        public DateTime? UpdatedAt { get; set; }
        [Display(Name = "Trạng thái")]
        public int Status { get; set; }
    }
}
