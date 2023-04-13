using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyClass.Models
{
    [Table("Products")]
    public class Product
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Tên sản phẩm!!!")]
        [Display(Name = "Tên sản phẩm")]
        public string Name { get; set; }

        [Display(Name = "liên kết")]
        public string Slug { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Chi tiết!!!")]
        [Display(Name = "Chi tiết")]
        public string Detail { get; set; }
        [Required(ErrorMessage = "Nhập khóa tìm kiếm")]
        [Display(Name = "Vui lòng nhập thương hiệu")]
        ////Từ khóa tìm kiếm
        public string Metakey { get; set; }
        [Required(ErrorMessage = "Nhập khóa mô tả")]
        [Display(Name = "Từ khóa mô tả")]
        public string Metadesc { get; set; }
        [Display(Name = "Hình ảnh")]
        public string Img { get; set; }
        [Required(ErrorMessage = "Vui lòng chọn loại sản phẩm!!!")]
        [Display(Name = "Loại sản phẩm")]
        public int CatId { get; set; }
        [Required(ErrorMessage = "Vui lòng chọn nhà cung cấp!!!")]
        [Display(Name = "Nhà cung cấp")]
        public int SupplierId { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Số lượng!!!")]
        [Display(Name = "Số lượng")]
        public int Number { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Giá!!!")]
        [Display(Name = "Giá")]
        public decimal Price { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập giá khuyến mãi!!!")]
        [Display(Name = "Giá khuyến mãi")]
        public decimal Pricesale { get; set; }
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
