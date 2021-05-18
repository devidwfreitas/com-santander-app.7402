.class public Lki;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbr/com/santander/dynamicauth/features/cso/a/a;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/cso/a/a;)V
    .locals 0

    iput-object p1, p0, Lki;->a:Lbr/com/santander/dynamicauth/features/cso/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lki;->a:Lbr/com/santander/dynamicauth/features/cso/a/a;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lki;->a:Lbr/com/santander/dynamicauth/features/cso/a/a;

    iget-object v1, p0, Lki;->a:Lbr/com/santander/dynamicauth/features/cso/a/a;

    invoke-static {v1}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lki;->a:Lbr/com/santander/dynamicauth/features/cso/a/a;

    invoke-static {v2}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lki;->a:Lbr/com/santander/dynamicauth/features/cso/a/a;

    invoke-static {v0, v3}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;Z)V

    :cond_0
    return-void
.end method
