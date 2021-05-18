.class Ldvk;
.super Leal;


# instance fields
.field final synthetic a:Ldwy;


# direct methods
.method constructor <init>(Ldvb;Ldwy;)V
    .locals 0

    iput-object p2, p0, Ldvk;->a:Ldwy;

    invoke-direct {p0}, Leal;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Ldvk;->a:Ldwy;

    invoke-interface {v0, p1}, Ldwy;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcwx;)V
    .locals 2

    iget-object v1, p0, Ldvk;->a:Ldwy;

    invoke-static {p1}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Ldwy;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
