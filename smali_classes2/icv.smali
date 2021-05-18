.class public Licv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Licv;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 151
    const-string v0, "FaleConosco"

    iget-object v1, p0, Licv;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v1}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->f(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Libp;

    move-result-object v1

    iget-object v2, p0, Licv;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v2}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->g(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Libo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libm;->a(Ljava/lang/String;Libp;Libo;)V

    .line 152
    iget-object v0, p0, Licv;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->h(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Lidl;

    move-result-object v0

    invoke-interface {v0, p1}, Lidl;->a(Landroid/view/View;)V

    .line 153
    return-void
.end method
