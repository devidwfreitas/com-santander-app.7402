.class public Lktc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lktb;
    .annotation runtime Leks;
        a = "insured"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lktb;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lktc;->a:Lktb;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lktb;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lktc;->a:Lktb;

    return-object v0
.end method

.method public a(Lktb;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lktc;->a:Lktb;

    .line 20
    return-void
.end method
