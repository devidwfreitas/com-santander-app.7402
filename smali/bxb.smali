.class final Lbxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbww;


# direct methods
.method constructor <init>(Lbww;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lbxb;->a:Lbww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lbxb;->a:Lbww;

    invoke-static {v0}, Lbww;->a(Lbww;)V

    .line 285
    return-void
.end method
