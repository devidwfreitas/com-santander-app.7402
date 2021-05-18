.class public Lhbi;
.super Lhbm;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lhbm;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Header/>"

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Body>"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<web:init>"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<request>"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<deviceData>"

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</deviceData>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<deviceKey>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</deviceKey>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</web:init>"

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Header/>"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Body>"

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<web:simularAlterarProgramacaoRecarga>"

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<entrada>"

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<agencia>"

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</agencia>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<banco>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</banco>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<conta>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</conta>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 473
    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 474
    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</entrada>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</web:simularAlterarProgramacaoRecarga>"

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>"

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Header/>"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Body>"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<web:simularCancelarContratoEmprestimo>"

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<entrada>"

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<agencia>"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</agencia>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<banco>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</banco>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<conta>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</conta>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 494
    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 495
    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</entrada>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</web:simularCancelarContratoEmprestimo>"

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>"

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Header/>"

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Body>"

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<web:simularCancelarProgramacaoRecarga>"

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<entrada>"

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<agencia>"

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 512
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</agencia>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<banco>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</banco>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<conta>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</conta>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 515
    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 516
    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</entrada>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</web:simularCancelarProgramacaoRecarga>"

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Header/>"

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Body>"

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<web:getPublicKey/>"

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Body>"

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<web:validarSessao>"

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<idSessao>"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 435
    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 436
    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</web:validarSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<soapenv:Body>"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<web:invalidarSessao>"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<idSessao>"

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 451
    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</idSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhbi;->a:Lmiq;

    .line 452
    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</connUuid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</web:invalidarSessao>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Body>"

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</soapenv:Envelope>"

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    return-object v0
.end method


# virtual methods
.method public a()Lfwu;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-static {}, Lmyu;->a()Lmyu;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Lmyu;->a(Z)V

    .line 36
    invoke-virtual {v0, v2}, Lmyu;->b(Z)V

    .line 40
    :try_start_0
    invoke-direct {p0}, Lhbi;->h()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {}, Lhas;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lhbi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    :try_start_1
    new-instance v0, Lkao;

    invoke-direct {v0, v2}, Lkao;-><init>(Ljava/io/InputStream;)V

    .line 50
    invoke-virtual {v0}, Lkao;->b()V

    .line 52
    invoke-virtual {v0}, Lkao;->a()Lfwu;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfwu;->hasError()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lfwu;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v3, v0}, Lmiq;->a(Lfwu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 71
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v2, "KeyService"

    const-string v3, "sendPublicKeyRequest"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 71
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 66
    goto :goto_0
.end method

.method public b()Lfwo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 78
    :try_start_0
    new-instance v2, Lnaf;

    invoke-direct {v2}, Lnaf;-><init>()V

    .line 81
    invoke-virtual {v2}, Lnaf;->a()V

    .line 84
    iget-object v0, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->k()Lfwv;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfwv;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lfwv;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lfwv;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v0}, Lfwv;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lfwv;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lhbi;->a:Lmiq;

    new-instance v3, Lfwv;

    invoke-direct {v3}, Lfwv;-><init>()V

    invoke-virtual {v0, v3}, Lmiq;->a(Lfwv;)V

    .line 90
    iget-object v0, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->k()Lfwv;

    move-result-object v0

    .line 93
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lfwv;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lfwv;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nnull\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lfwv;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lfwv;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lfwv;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v3, ""

    .line 98
    const-string v3, ""

    .line 99
    iget-object v3, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v3}, Lmiq;->g()Lfwu;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v3}, Lmiq;->g()Lfwu;

    move-result-object v3

    invoke-virtual {v3}, Lfwu;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lhbi;->a:Lmiq;

    .line 100
    invoke-virtual {v3}, Lmiq;->g()Lfwu;

    move-result-object v3

    invoke-virtual {v3}, Lfwu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 101
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v3}, Lmiq;->g()Lfwu;

    move-result-object v3

    invoke-virtual {v3}, Lfwu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnaf;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v3, v2, Lnaf;->c:Ljava/security/PublicKey;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    iget-object v4, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v4}, Lmiq;->g()Lfwu;

    move-result-object v4

    invoke-virtual {v4}, Lfwu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnaf;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move-object v0, v1

    .line 151
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    .line 104
    goto :goto_0

    .line 112
    :cond_4
    invoke-direct {p0, v3, v0}, Lhbi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Lhas;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static {v3, v0, v4, v5}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lhbi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 120
    :try_start_1
    new-instance v0, Ljzp;

    invoke-direct {v0, v3}, Ljzp;-><init>(Ljava/io/InputStream;)V

    .line 121
    invoke-virtual {v0}, Ljzp;->b()V

    .line 123
    invoke-virtual {v0}, Ljzp;->a()Lfwo;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lfwo;->hasError()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lfwo;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_6
    :try_start_3
    invoke-virtual {v0}, Lfwo;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lfwo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 129
    invoke-virtual {v0}, Lfwo;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lfwo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_8

    .line 143
    :cond_7
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_8
    :try_start_5
    invoke-virtual {v0}, Lfwo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnaf;->b(Ljava/lang/String;)[B

    move-result-object v4

    .line 133
    iget-object v5, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v5, v4}, Lmiq;->a([B)V

    .line 135
    invoke-virtual {v0}, Lfwo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnaf;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 136
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 137
    iget-object v2, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v2, v4}, Lmiq;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v2, "KeyService"

    const-string v3, "sendKeyStoreRequest"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 151
    goto/16 :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_9
    move-object v0, v1

    .line 146
    goto/16 :goto_0
.end method

.method public c()Lfwu;
    .locals 4

    .prologue
    .line 161
    :try_start_0
    invoke-direct {p0}, Lhbi;->i()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Lhas;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lhbi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :try_start_1
    new-instance v0, Lkao;

    invoke-direct {v0, v1}, Lkao;-><init>(Ljava/io/InputStream;)V

    .line 179
    invoke-virtual {v0}, Lkao;->b()V

    .line 181
    invoke-virtual {v0}, Lkao;->a()Lfwu;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfwu;->hasFaultError()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lfwu;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v2, v0}, Lmiq;->a(Lfwu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 196
    :goto_0
    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lfwu;
    .locals 4

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Lhbi;->j()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {}, Lhas;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()Ljxf;
    .locals 4

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {}, Lmzr;->h()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-direct {p0, v2, v0, v1}, Lhbi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {}, Lhas;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    .line 249
    invoke-static {v1, v0, v2, v3}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1

    .line 253
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lhbi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :try_start_1
    new-instance v0, Ljww;

    invoke-direct {v0, v1}, Ljww;-><init>(Ljava/io/InputStream;)V

    .line 259
    invoke-virtual {v0}, Ljww;->b()V

    .line 261
    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v2

    invoke-virtual {v2}, Ljxf;->hasFaultError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iget-object v2, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v3

    invoke-virtual {v3}, Ljxf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmir;->i(Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-virtual {v0}, Ljww;->a()Ljxf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 277
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 291
    :goto_0
    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 283
    const-string v0, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Ljxf;

    invoke-direct {v0}, Ljxf;-><init>()V

    .line 287
    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    .line 288
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfvu;->setFaultstring(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v2}, Ljxf;->setError(Lfvu;)V

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljxf;
    .locals 4

    .prologue
    .line 298
    :try_start_0
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {}, Lmzr;->h()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-direct {p0, v2, v0, v1}, Lhbi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {}, Lhas;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    .line 305
    invoke-static {v1, v0, v2, v3}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_1

    .line 309
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lhbi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 313
    :try_start_1
    new-instance v0, Ljww;

    invoke-direct {v0, v1}, Ljww;-><init>(Ljava/io/InputStream;)V

    .line 314
    invoke-virtual {v0}, Ljww;->b()V

    .line 316
    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v2

    invoke-virtual {v2}, Ljxf;->hasFaultError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    iget-object v2, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v3

    invoke-virtual {v3}, Ljxf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmir;->i(Ljava/lang/String;)V

    .line 329
    :cond_0
    invoke-virtual {v0}, Ljww;->a()Ljxf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 331
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 344
    :goto_0
    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 337
    const-string v0, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljxf;

    invoke-direct {v0}, Ljxf;-><init>()V

    .line 341
    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    .line 342
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfvu;->setFaultstring(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v2}, Ljxf;->setError(Lfvu;)V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljxf;
    .locals 4

    .prologue
    .line 350
    :try_start_0
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {}, Lmzr;->h()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-direct {p0, v2, v0, v1}, Lhbi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {}, Lhas;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    .line 357
    invoke-static {v1, v0, v2, v3}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_1

    .line 361
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lhbi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 365
    :try_start_1
    new-instance v0, Ljww;

    invoke-direct {v0, v1}, Ljww;-><init>(Ljava/io/InputStream;)V

    .line 366
    invoke-virtual {v0}, Ljww;->b()V

    .line 368
    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v2

    invoke-virtual {v2}, Ljxf;->hasFaultError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    iget-object v2, p0, Lhbi;->a:Lmiq;

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v0}, Ljww;->a()Ljxf;

    move-result-object v3

    invoke-virtual {v3}, Ljxf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmir;->i(Ljava/lang/String;)V

    .line 382
    :cond_0
    invoke-virtual {v0}, Ljww;->a()Ljxf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 384
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 397
    :goto_0
    return-object v0

    .line 384
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 389
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 390
    const-string v0, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Ljxf;

    invoke-direct {v0}, Ljxf;-><init>()V

    .line 394
    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    .line 395
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfvu;->setFaultstring(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, v2}, Ljxf;->setError(Lfvu;)V

    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
