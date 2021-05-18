.class Lsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzx;


# instance fields
.field final synthetic a:Lsa;


# direct methods
.method constructor <init>(Lsa;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lsb;->a:Lsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lsb;->a:Lsa;

    iget-object v0, v0, Lsa;->a:Lrz;

    invoke-static {v0, p1}, Lrz;->a(Lrz;[Ljava/lang/String;)V

    return-void
.end method
