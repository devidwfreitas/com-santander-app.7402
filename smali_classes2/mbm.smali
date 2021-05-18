.class public Lmbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmbn;

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/DocumentItemView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/DocumentItemView;Lmbn;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lmbm;->b:Lcom/santander/app/seguros/ui/widgets/DocumentItemView;

    iput-object p2, p0, Lmbm;->a:Lmbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lmbm;->a:Lmbn;

    iget-object v1, p0, Lmbm;->b:Lcom/santander/app/seguros/ui/widgets/DocumentItemView;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->a(Lcom/santander/app/seguros/ui/widgets/DocumentItemView;)Lkwk;

    move-result-object v1

    invoke-interface {v0, v1}, Lmbn;->a(Lkwk;)V

    .line 68
    return-void
.end method
