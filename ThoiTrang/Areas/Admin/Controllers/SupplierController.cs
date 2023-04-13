﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MyClass.DAO;
using MyClass.Models;
using ThoiTrang.Library;

namespace ThoiTrang.Areas.Admin.Controllers
{
    public class SupplierController : Controller
    {
        SupplierDAO supplierDAO = new SupplierDAO();
        LinkDAO linkDAO = new LinkDAO();

        // GET: Admin/supplier
        public ActionResult Index()
        {
            return View(supplierDAO.getList("Index"));
        }

        // GET: Admin/supplier/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Supplier supplier = supplierDAO.getRow(id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            return View(supplier);
        }

        // GET: Admin/supplier/Create
        public ActionResult Create()
        {
            ViewBag.ListCat = new SelectList(supplierDAO.getList("Index"), "Id", "Name", 0);
            ViewBag.ListOrder = new SelectList(supplierDAO.getList("Index"), "Orders", "Name", 0);
            return View();
        }

        // POST: Admin/supplier/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                //xử lý thêm thông tin
                supplier.Slug = XString.Str_Slug(supplier.Name);
                string name = supplier.Name;
                supplier.Slug = XString.Str_Slug(name);
                string Slug = supplier.Slug;
                //Uploadfile
                var img = Request.Files["fileimg"];
                if (img.ContentLength != 0)
                {
                    string[] FileExtentions = new string[] { ".jpg", ".jpeg", ".png", ".gif", "JPG" };
                    //kiểm tra tập tin
                    if (FileExtentions.Contains(img.FileName.Substring(img.FileName.LastIndexOf("."))))
                    {
                        string imgName = Slug + img.FileName.Substring(img.FileName.LastIndexOf("."));
                        supplier.Img = imgName;
                        string PathDir = "~/Public/images/suppliers/";
                        string PathFile = Path.Combine(Server.MapPath(PathDir), imgName);
                        img.SaveAs(PathFile);
                    }
                }
                //end upload file

                supplier.CreatedBy = Convert.ToInt32(Session["UserId"].ToString());
                supplier.CreatedAt = DateTime.Now;
                if (supplierDAO.Insert(supplier) == 1)
                {
                    Link link = new Link();
                    link.Slug = supplier.Slug;
                    link.TableId = supplier.Id;
                    link.TypeLink = "supplier";
                    linkDAO.Insert(link);
                }
                TempData["message"] = new XMessage("success", "Thêm thành công");
                return RedirectToAction("Index", "Supplier");
            }
            ViewBag.ListOrder = new SelectList(supplierDAO.getList("Index"), "Orders", "Name", 0);
            return View(supplier);
        }

        // GET: Admin/Supplier/Edit/5
        public ActionResult Edit(int? id)
        {
            ViewBag.ListCat = new SelectList(supplierDAO.getList("Index"), "Id", "Name", 0);
            ViewBag.ListOrder = new SelectList(supplierDAO.getList("Index"), "Orders", "Name", 0);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Supplier supplier = supplierDAO.getRow(id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            ViewBag.ListOrder = new SelectList(supplierDAO.getList("Index"), "Orders", "Name", 0);
            return View(supplier);
        }

        // POST: Admin/supplier/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                supplier.Slug = XString.Str_Slug(supplier.Name);
                //Uploadfile
                var img = Request.Files["fileimg"];
                string Slug = supplier.Slug;
                if (img.ContentLength != 0)
                {
                    string[] FileExtentions = new string[] { ".jpg", ".jpeg", ".png", ".gif", "JPG" };
                    //kiểm tra tập tin
                    if (FileExtentions.Contains(img.FileName.Substring(img.FileName.LastIndexOf("."))))
                    {
                        string imgName = Slug + img.FileName.Substring(img.FileName.LastIndexOf("."));
                        supplier.Img = imgName;
                        string PathDir = "~/Public/images/suppliers/";
                        string PathFile = Path.Combine(Server.MapPath(PathDir), imgName);
                        //xoa file
                        if(supplier.Img !=null)
                        {
                            string DelPath = Path.Combine(Server.MapPath(PathDir),supplier.Img);
                            System.IO.File.Delete(DelPath);
                        }    
                        img.SaveAs(PathFile);
                    }
                }
                //end upload file

                supplier.UpdatedBy = Convert.ToInt32(Session["UserId"].ToString());
                supplier.UpdatedAt = DateTime.Now;
                if (supplierDAO.Update(supplier) == 1)
                {
                    Link link = linkDAO.getRow(supplier.Id, "supplier");
                    link.Slug = supplier.Slug;
                    linkDAO.Update(link);
                }
                TempData["message"] = new XMessage("success", "Cập nhập thành công");
                return RedirectToAction("Index");
            }
            ViewBag.ListOrder = new SelectList(supplierDAO.getList("Index"), "Orders", "Name", 0);
            return View(supplier);
        }

        // GET: Admin/supplier/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Supplier supplier = supplierDAO.getRow(id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            return View(supplier);
        }

        // POST: Admin/supplier/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Supplier supplier = supplierDAO.getRow(id);
            Link link = linkDAO.getRow(supplier.Id, "supplier");
            string PathDir = "~/Public/images/suppliers/";
            //xoa Hình ảnh !=null
            if (supplier.Img.Length>0)
            {
                string DelPath = Path.Combine(Server.MapPath(PathDir), supplier.Img);
                System.IO.File.Delete(DelPath);
            }
            if (supplierDAO.Delete(supplier) == 1)
            {
                linkDAO.Delete(link);
            }
            TempData["message"] = new XMessage("success", "Xóa mẫu tin thành công!");
            return RedirectToAction("Trash", "Supplier");
        }
        public ActionResult Trash()
        {
            return View(supplierDAO.getList("Trash"));
        }
        public ActionResult Status(int? id)
        {
            if (id == null)
            {
                TempData["message"] = new XMessage("danger", "Mã Loại sản phẩm không tồn tại");
                return RedirectToAction("Index", "Supplier");
            }
            Supplier supplier = supplierDAO.getRow(id);
            if (supplier == null)
            {
                TempData["message"] = new XMessage("danger", "Mã tin sản phẩm không tồn tại");
                return RedirectToAction("Index", "Supplier");
            }
            supplier.Status = (supplier.Status == 1) ? 2 : 1;
            supplier.UpdatedBy = Convert.ToInt32(Session["UserId"].ToString());
            supplier.UpdatedAt = DateTime.Now;
            supplierDAO.Update(supplier);
            TempData["message"] = new XMessage("success", "Thay đổi trạng thái thành công");
            return RedirectToAction("Index", "Supplier");
        }

        public ActionResult DelTrash(int? id)
        {
            if (id == null)
            {
                TempData["message"] = new XMessage("danger", "Mã Loại sản phẩm không tồn tại");
                return RedirectToAction("Index", "Supplier");
            }
            Supplier supplier = supplierDAO.getRow(id);
            if (supplier == null)
            {
                TempData["message"] = new XMessage("danger", "Mã tin sản phẩm không tồn tại");
                return RedirectToAction("Index", "Supplier");
            }
            supplier.Status = 0;// trạng thái rac = 0
            supplier.UpdatedBy = Convert.ToInt32(Session["UserId"].ToString());
            supplier.UpdatedAt = DateTime.Now;
            supplierDAO.Update(supplier);
            TempData["message"] = new XMessage("success", "Xóa vào thùng rác thành công");
            return RedirectToAction("Index", "Supplier");
        }
        public ActionResult Retrash(int? id)
        {
            if (id == null)
            {
                TempData["message"] = new XMessage("danger", "Mã Loại sản phẩm không tồn tại");
                return RedirectToAction("Trash", "Supplier");
            }
            Supplier supplier = supplierDAO.getRow(id);
            if (supplier == null)
            {
                TempData["message"] = new XMessage("danger", "Mã tin sản phẩm không tồn tại");
                return RedirectToAction("Trash", "Supplier");
            }
            supplier.Status = 2;// Từ trạng thái rac = 0 khôi phục về danh sách thì trả về mặc định bằng  2
            supplier.UpdatedBy = Convert.ToInt32(Session["UserId"].ToString());
            supplier.UpdatedAt = DateTime.Now;
            supplierDAO.Update(supplier);
            TempData["message"] = new XMessage("success", "Khôi phục về danh sách thành công");
            return RedirectToAction("Trash", "Supplier");
        }
    }
}
