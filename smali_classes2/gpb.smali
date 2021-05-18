.class public Lgpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/components/view/ClickToSelectEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lgpb;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object p2, p0, Lgpb;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lgpb;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lgpb;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-static {v2}, Lcom/santander/app/components/view/ClickToSelectEditText;->b(Lcom/santander/app/components/view/ClickToSelectEditText;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Lcom/santander/app/components/view/ClickToSelectEditText;Ljava/util/List;)Ljava/util/List;

    .line 198
    iget-object v0, p0, Lgpb;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 199
    return-void
.end method
