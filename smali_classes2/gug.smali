.class public Lgug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;I)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lgug;->b:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    iput p2, p0, Lgug;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lgug;->b:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a(Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;)Lguh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lgug;->b:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->a(Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;)Lguh;

    move-result-object v0

    iget-object v1, p0, Lgug;->b:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    invoke-static {v1}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->b(Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;)Landroid/widget/Adapter;

    move-result-object v1

    iget v2, p0, Lgug;->a:I

    invoke-interface {v0, v1, p1, v2}, Lguh;->a(Landroid/widget/Adapter;Landroid/view/View;I)V

    .line 90
    :cond_0
    return-void
.end method
