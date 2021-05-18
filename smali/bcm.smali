.class public Lbcm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbcp;

.field private final b:Lbbi;

.field private final c:Lbaw;


# direct methods
.method private constructor <init>(Lbcp;Lbbi;Lbaw;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbcm;->a:Lbcp;

    .line 23
    iput-object p2, p0, Lbcm;->b:Lbbi;

    .line 24
    iput-object p3, p0, Lbcm;->c:Lbaw;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lbcp;Lbbi;Lbaw;Lbcn;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lbcm;-><init>(Lbcp;Lbbi;Lbaw;)V

    return-void
.end method


# virtual methods
.method public a()Lbcp;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbcm;->a:Lbcp;

    return-object v0
.end method

.method public b()Lbbi;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbcm;->b:Lbbi;

    return-object v0
.end method

.method public c()Lbaw;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lbcm;->c:Lbaw;

    return-object v0
.end method
