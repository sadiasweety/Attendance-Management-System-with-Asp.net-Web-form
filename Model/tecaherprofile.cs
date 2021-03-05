namespace AttendanceManagement.Model
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class tecaherprofile : DbContext
    {
        public tecaherprofile()
            : base("name=tecaherprofile")
        {
        }

        public virtual DbSet<TblTeacherProfile> TblTeacherProfiles { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TblTeacherProfile>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<TblTeacherProfile>()
                .Property(e => e.LastName)
                .IsUnicode(false);

            modelBuilder.Entity<TblTeacherProfile>()
                .Property(e => e.Region)
                .IsUnicode(false);

            modelBuilder.Entity<TblTeacherProfile>()
                .Property(e => e.Adress)
                .IsUnicode(false);

            modelBuilder.Entity<TblTeacherProfile>()
                .Property(e => e.Gender)
                .IsUnicode(false);

            modelBuilder.Entity<TblTeacherProfile>()
                .Property(e => e.LastAcquiredCertificate)
                .IsUnicode(false);

            modelBuilder.Entity<TblTeacherProfile>()
                .Property(e => e.TeacherImage)
                .IsUnicode(false);
        }
    }
}
