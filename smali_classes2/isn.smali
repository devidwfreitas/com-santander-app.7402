.class Lisn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lism;


# direct methods
.method constructor <init>(Lism;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lisn;->a:Lism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    const-string v0, "Login_Acao"

    const-string v1, "Selecionar CPF"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method
