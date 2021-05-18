.class final Lctt;
.super Lctq;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lddk;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Lddk;I)V
    .locals 0

    iput-object p1, p0, Lctt;->a:Landroid/content/Intent;

    iput-object p2, p0, Lctt;->b:Lddk;

    iput p3, p0, Lctt;->c:I

    invoke-direct {p0}, Lctq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lctt;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctt;->b:Lddk;

    iget-object v1, p0, Lctt;->a:Landroid/content/Intent;

    iget v2, p0, Lctt;->c:I

    invoke-interface {v0, v1, v2}, Lddk;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
