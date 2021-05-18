.class public Lkk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbr/com/santander/dynamicauth/features/error/a/a;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/error/a/a;)V
    .locals 0

    iput-object p1, p0, Lkk;->a:Lbr/com/santander/dynamicauth/features/error/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lkk;->a:Lbr/com/santander/dynamicauth/features/error/a/a;

    iget-object v0, p0, Lkk;->a:Lbr/com/santander/dynamicauth/features/error/a/a;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/error/a/a;->a(Lbr/com/santander/dynamicauth/features/error/a/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/features/error/a/a;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
