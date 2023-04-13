using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyClass.Models
{
    [Table("Users")]
   public class User
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên!!!")]
        [Display(Name = "Tên đầu đủ")]
        public string FullName { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Email!!!")]
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập số điện thoại!!!")]
        [Display(Name = "Số điện thoại")]
        public string Phone { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên tài khoản!!!")]
        [Display(Name = "Tên tài khoản")]
        public string Img { get; set; }
        public int? CountError { get; set; }
        public string Username { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập mật khẩu!!!")]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập !!!")]
        [Display(Name = "Roles")]
        public string Roles { get; set; }
        [Display(Name = "Tạo bởi")]
        public int? Gender { get; set; }
        public string Address { get; set; }
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
