.class Lmih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmie;


# direct methods
.method constructor <init>(Lmie;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lmih;->a:Lmie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmih;->a:Lmie;

    invoke-virtual {v0}, Lmie;->dismiss()V

    .line 189
    return-void
.end method
