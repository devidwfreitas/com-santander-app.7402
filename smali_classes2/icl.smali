.class public Licl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/faq/presentation/FaqActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faq/presentation/FaqActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Licl;->a:Lcom/santander/app/faq/presentation/FaqActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lism;->b:Z

    .line 112
    iget-object v0, p0, Licl;->a:Lcom/santander/app/faq/presentation/FaqActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqActivity;->a(Lcom/santander/app/faq/presentation/FaqActivity;)Lidj;

    move-result-object v0

    invoke-interface {v0}, Lidj;->c()V

    .line 113
    return-void
.end method
