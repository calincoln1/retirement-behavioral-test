from pytest_bdd import scenario, given, when, then, parsers

import retirement


@scenario('calculator.feature', 'Lowest Edge Case')
def test_lowest_edge_case():
    pass


@scenario('calculator.feature', 'Highest Edge Case')
def test_highest_edge_case():
    pass


@scenario('calculator.feature', 'Non Edge Cases')
def test_non_edge_cases():
    pass


@given(parsers.cfparse('I have entered "{year}" as the year'))
@given(parsers.cfparse('I have entered "{month}" as the month'))
@when('I press enter')
def process_pickles():
    pass


@then(parsers.cfparse('the result should be "{out_year}" and "{out_month}" months'))
def result(year, month, out_year, out_month):
    oy, om = retirement.calculate_retirement_age(year)
    assert (str(oy), str(om)) == (out_year, out_month)
