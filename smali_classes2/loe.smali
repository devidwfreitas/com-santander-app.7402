.class Lloe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llll;


# instance fields
.field final synthetic a:Lloc;


# direct methods
.method constructor <init>(Lloc;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lloe;->a:Lloc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lloe;->a:Lloc;

    invoke-static {v0}, Lloc;->c(Lloc;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    return-void
.end method
