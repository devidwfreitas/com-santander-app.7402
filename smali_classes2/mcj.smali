.class public Lmcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmcl;

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;Lmcl;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lmcj;->b:Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;

    iput-object p2, p0, Lmcj;->a:Lmcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lmcj;->a:Lmcl;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmcl;->a(I)V

    .line 100
    return-void
.end method
