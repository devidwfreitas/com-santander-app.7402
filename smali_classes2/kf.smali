.class public Lkf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lbr/com/santander/dynamicauth/features/cso/a/a;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/cso/a/a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkf;->b:Lbr/com/santander/dynamicauth/features/cso/a/a;

    iput-object p2, p0, Lkf;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lkf;->b:Lbr/com/santander/dynamicauth/features/cso/a/a;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lkf;->b:Lbr/com/santander/dynamicauth/features/cso/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkf;->b:Lbr/com/santander/dynamicauth/features/cso/a/a;

    invoke-static {v2}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkf;->a:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkf;->a:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lkf;->b:Lbr/com/santander/dynamicauth/features/cso/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/com/santander/dynamicauth/features/cso/a/a;->a(Lbr/com/santander/dynamicauth/features/cso/a/a;Z)V

    :cond_0
    return-void
.end method
