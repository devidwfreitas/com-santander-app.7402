.class final Lcts;
.super Lctq;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/support/v4/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcts;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcts;->b:Landroid/support/v4/app/Fragment;

    iput p3, p0, Lcts;->c:I

    invoke-direct {p0}, Lctq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcts;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->b:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcts;->a:Landroid/content/Intent;

    iget v2, p0, Lcts;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
