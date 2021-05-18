.class public Licn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/santander/app/faq/presentation/FaqActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faq/presentation/FaqActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Licn;->b:Lcom/santander/app/faq/presentation/FaqActivity;

    iput-object p2, p0, Licn;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Licn;->b:Lcom/santander/app/faq/presentation/FaqActivity;

    iget-object v1, p0, Licn;->a:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/faq/presentation/FaqActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 192
    iget-object v0, p0, Licn;->b:Lcom/santander/app/faq/presentation/FaqActivity;

    const v1, 0x7f050013

    const v2, 0x7f050015

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/faq/presentation/FaqActivity;->overridePendingTransition(II)V

    .line 193
    return-void
.end method
