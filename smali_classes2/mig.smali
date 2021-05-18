.class Lmig;
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
    .line 141
    iput-object p1, p0, Lmig;->a:Lmie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmig;->a:Lmie;

    invoke-virtual {v0}, Lmie;->dismiss()V

    .line 145
    return-void
.end method
