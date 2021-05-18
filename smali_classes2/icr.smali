.class public Licr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faq/presentation/FaqPerguntasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Licr;->a:Lcom/santander/app/faq/presentation/FaqPerguntasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Licr;->a:Lcom/santander/app/faq/presentation/FaqPerguntasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->b(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)Lidh;

    move-result-object v0

    invoke-interface {v0, p1}, Lidh;->c(Landroid/view/View;)V

    .line 105
    return-void
.end method
