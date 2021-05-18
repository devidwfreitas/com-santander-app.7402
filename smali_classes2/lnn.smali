.class Llnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lllx;


# instance fields
.field final synthetic a:Llnm;


# direct methods
.method constructor <init>(Llnm;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Llnn;->a:Llnm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Llnn;->a:Llnm;

    invoke-static {v0}, Llnm;->a(Llnm;)Lllx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Llnn;->a:Llnm;

    invoke-static {v0}, Llnm;->a(Llnm;)Lllx;

    move-result-object v0

    invoke-interface {v0, p1}, Lllx;->a(Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Llnn;->a:Llnm;

    invoke-virtual {v0}, Llnm;->dismiss()V

    .line 47
    return-void
.end method
