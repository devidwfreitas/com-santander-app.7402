.class public Lmbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->d()V

    .line 114
    :goto_0
    iget-object v0, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Lmbr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Lmbr;

    move-result-object v0

    iget-object v1, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Z

    move-result v1

    iget-object v2, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->c(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmbr;->a(ZLjava/lang/String;)V

    .line 118
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lmbq;->a:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->c()V

    goto :goto_0
.end method
