.class Ldas;
.super Ldda;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ldar;


# direct methods
.method constructor <init>(Ldar;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Ldas;->b:Ldar;

    iput-object p2, p0, Ldas;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ldda;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldas;->b:Ldar;

    iget-object v0, v0, Ldar;->a:Ldap;

    invoke-virtual {v0}, Ldap;->d()V

    iget-object v0, p0, Ldas;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldas;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
